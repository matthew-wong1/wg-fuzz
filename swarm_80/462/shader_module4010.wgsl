struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec3<i32> = vec3<i32>(-1i, -3091i, 1i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = arg_1.c.xxx;
    var var_1 = arg_1;
    var_1 = Struct_1(vec3<i32>(max(var_0.x, -(global1.x << (var_1.e.x % 32u))), _wgslsmith_dot_vec4_i32(select(arg_1.c, vec4<i32>(-54997i, -1i, var_1.a.x, u_input.c) | vec4<i32>(var_1.d.x, 57900i, -1i, var_0.x), vec4<bool>(false, true, true, arg_0)), vec4<i32>(var_0.x, var_0.x, -2147483647i, var_0.x) | (var_1.c ^ var_1.c)), abs(firstLeadingBit(~(-1i)))), var_1.b, var_1.c, u_input.a, var_1.e);
    let var_2 = ~u_input.e.x << (countOneBits(_wgslsmith_clamp_u32(arg_1.e.x >> ((var_1.e.x << (18911u % 32u)) % 32u), reverseBits(1u), 2275u)) % 32u);
    var var_3 = ~u_input.b.x;
    return -var_1.c | arg_1.c;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> i32 {
    var var_0 = 4294967295u;
    let var_1 = Struct_1(-abs(~(~vec3<i32>(global1.x, arg_1.a.x, global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-415f + _wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(select(-276f, arg_0.b, true))))), reverseBits(-func_3(true, arg_0)), u_input.a, ~vec4<u32>(1u, arg_1.e.x, 27744u, ~(~0u)));
    return _wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.d.x, 1i, 3689i), vec3<i32>(-arg_0.c.x, max(0i, global1.x), 2558i)), i32(-1i) * -reverseBits(~1i));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: u32) -> i32 {
    var var_0 = arg_1.x;
    let var_1 = Struct_1(-_wgslsmith_clamp_vec3_i32(max(vec3<i32>(u_input.a.x, 0i, global1.x), arg_0 ^ vec3<i32>(u_input.c, 45420i, -2147483647i)), abs(-u_input.a), vec3<i32>(func_2(Struct_1(vec3<i32>(global1.x, -4420i, global1.x), 102f, vec4<i32>(0i, 2147483647i, global1.x, -2147483647i), vec3<i32>(arg_0.x, -1i, -1i), vec4<u32>(arg_2, arg_2, 4294967295u, u_input.b.x)), Struct_1(vec3<i32>(5657i, u_input.d, -16616i), arg_1.x, vec4<i32>(arg_0.x, arg_0.x, global1.x, -15765i), vec3<i32>(u_input.d, -16526i, 1i), vec4<u32>(u_input.e.x, 24578u, 56362u, arg_2)), 0u, Struct_1(arg_0, 2818f, vec4<i32>(u_input.d, arg_0.x, 0i, 2147483647i), arg_0, vec4<u32>(1u, 4294967295u, 10339u, 23142u))), _wgslsmith_mod_i32(global1.x, u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global1.x, arg_0.x), u_input.a))), -1622f, vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-1i << (arg_2 % 32u), _wgslsmith_clamp_i32(12691i, -1i, global1.x)), ~0i >> (arg_2 % 32u), 2147483647i), global1.x, arg_0.x ^ u_input.c, _wgslsmith_sub_i32(~arg_0.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, 1i, 1i, 27720i), vec4<i32>(37000i, 15279i, 2147483647i, 25662i)), abs(global1.x)))), -u_input.a, vec4<u32>(arg_2, 97853u, abs(arg_2), 7467u));
    var var_2 = var_1.b;
    var_0 = -687f;
    var var_3 = true;
    return _wgslsmith_mod_i32(~(-2147483647i), 1028i | -_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, global1.x), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, func_1(u_input.a << (vec3<u32>(u_input.e.x, 29510u, 0u) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(819f, 780f)), ~59328u) << (_wgslsmith_add_u32(~u_input.b.x, ~5050u) % 32u), func_3(all(vec3<bool>(true, false, true)), Struct_1(~u_input.a, -898f, vec4<i32>(global1.x, -2147483647i, 0i, 45886i), reverseBits(vec3<i32>(global1.x, -1i, -18035i)), abs(vec4<u32>(u_input.b.x, 4294967295u, 9586u, 17171u)))).x), select(vec3<i32>(-53411i, -global1.x | global1.x, -u_input.c), vec3<i32>(abs(18733i), global1.x, global1.x), true));
    var var_0 = ~u_input.b.x;
    let var_1 = true;
    var_0 = _wgslsmith_mod_u32(abs(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.b.x, 68167u, 1u), u_input.b.x)) << ((abs(1u) & ~(u_input.e.x | u_input.b.x)) % 32u), firstTrailingBit(reverseBits(u_input.e.x)));
    global1 = vec3<i32>(~(~1i), -27939i, 74979i & _wgslsmith_mult_i32(u_input.d ^ global1.x, u_input.a.x));
    global0 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(-429f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1143f + -979f) - _wgslsmith_f_op_f32(trunc(1417f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(405f - -1505f) * _wgslsmith_f_op_f32(max(1222f, -872f))), 460f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1910f, 904f, -1247f, -449f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(859f, 1396f, 561f, 924f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), abs(~select(~vec4<u32>(0u, 57209u, 0u, u_input.b.x), ~vec4<u32>(u_input.e.x, 52888u, 0u, u_input.b.x), vec4<bool>(var_1, var_1, var_1, var_1))), ~(_wgslsmith_sub_i32(~u_input.a.x, ~2147483647i) ^ ~func_1(u_input.a, vec2<f32>(297f, 194f), u_input.e.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-1346f + -1177f), -1000f, _wgslsmith_f_op_f32(min(-974f, -1000f))))))));
}

