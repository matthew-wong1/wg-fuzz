struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> f32 {
    var var_0 = Struct_1(vec2<u32>(_wgslsmith_div_u32(1u, min(u_input.a, arg_1)), 4294967295u), vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.x, arg_0.b.x, 57758i) << (arg_0.d % vec3<u32>(32u)), -vec3<i32>(arg_0.b.x, 1i, 2147483647i)), -47819i, abs(arg_0.b.x), -26529i), arg_0.a, _wgslsmith_clamp_vec3_u32(arg_0.d, _wgslsmith_div_vec3_u32(vec3<u32>(0u, 15225u, 0u), select(vec3<u32>(arg_0.d.x, u_input.a, u_input.a), arg_0.d, false)) >> (abs(vec3<u32>(1u, 0u, 0u)) % vec3<u32>(32u)), arg_0.d));
    var_0 = arg_0;
    let var_1 = vec4<bool>(29548u > _wgslsmith_add_u32(firstLeadingBit(var_0.c.x), var_0.d.x), all(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true))), true, false);
    var var_2 = Struct_1(_wgslsmith_add_vec2_u32(max(_wgslsmith_mult_vec2_u32(var_0.d.yy, vec2<u32>(4294967295u, 60288u)), firstTrailingBit(var_0.d.yz)) >> (arg_0.c % vec2<u32>(32u)), ~(vec2<u32>(var_0.c.x, arg_0.d.x) << (_wgslsmith_add_vec2_u32(vec2<u32>(21990u, 28358u), vec2<u32>(var_0.d.x, u_input.a)) % vec2<u32>(32u)))), ~vec4<i32>(_wgslsmith_add_i32(2147483647i, -12752i), _wgslsmith_sub_i32(~u_input.b, countOneBits(1i)), u_input.b, -1i), vec2<u32>(arg_0.a.x, abs(var_0.a.x)), ~(~vec3<u32>(u_input.a, arg_0.c.x, 4294967295u) | vec3<u32>(max(1u, u_input.a), ~56611u, _wgslsmith_div_u32(35266u, u_input.a))));
    let var_3 = select(!vec3<bool>(!(!var_1.x), any(vec4<bool>(var_1.x, var_1.x, false, false)), _wgslsmith_div_i32(31421i, var_0.b.x) != _wgslsmith_dot_vec4_i32(var_0.b, vec4<i32>(u_input.c.x, var_0.b.x, 37324i, var_2.b.x))), !(!(!var_1.wwz)), var_1.x);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-794f))))))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec2<u32>(4294967295u, u_input.a), arg_0.b, vec2<u32>(4294967295u, 15554u), arg_0.d), arg_0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -911f))) + _wgslsmith_f_op_f32(f32(-1f) * -2023f)));
    var var_1 = arg_0;
    var var_2 = select(vec2<bool>(true, ~arg_0.c.x <= var_1.d.x), !(!select(!vec2<bool>(false, arg_1.x), arg_1.xy, false)), false || ((u_input.b >> (_wgslsmith_sub_u32(4294967295u, 0u) % 32u)) > -45589i));
    var var_3 = ~(~(var_1.b.x << (1u % 32u)));
    var var_4 = arg_0;
    return select(arg_1.yy, select(select(select(!vec2<bool>(false, var_2.x), !vec2<bool>(arg_1.x, arg_1.x), true), select(select(arg_1.yx, vec2<bool>(false, arg_1.x), arg_1.xz), select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(false, false), vec2<bool>(arg_1.x, var_2.x)), any(vec3<bool>(false, true, arg_1.x))), any(vec4<bool>(arg_1.x, false, false, arg_1.x))), select(vec2<bool>(!arg_1.x, all(arg_1.yy)), !(!arg_1.yy), select(vec2<bool>(var_2.x, false), vec2<bool>(false, var_2.x), !arg_1.xz)), arg_1.zx), all(vec4<bool>(!(arg_1.x && arg_1.x), false, arg_1.x, !all(arg_1.yx))));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = any(vec4<bool>(any(select(arg_2.yz, func_2(arg_0, vec3<bool>(false, true, true)), any(vec4<bool>(true, arg_2.x, false, arg_2.x)))), -arg_0.b.x != ~(-2147483647i), false, any(arg_2.zy)));
    var var_1 = ~(arg_0.c.x ^ firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_div_u32(arg_0.c.x, 0u), arg_0.a.x, ~4294967295u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-922f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -890f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-415f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-552f, -1396f, 0u == u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -418f) - _wgslsmith_f_op_f32(select(-440f, 961f, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2101f, -195f, var_0)) + _wgslsmith_f_op_f32(max(-801f, -225f))) - _wgslsmith_f_op_f32(select(-508f, _wgslsmith_f_op_f32(1209f + 1339f), arg_2.x)))));
    var var_3 = _wgslsmith_mult_u32(u_input.a, ~0u);
    let var_4 = var_2;
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec3<bool>) -> i32 {
    var var_0 = _wgslsmith_add_vec4_u32(firstLeadingBit(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_0.d.x, arg_2.c.x, u_input.a), min(vec4<u32>(0u, 4294967295u, 0u, u_input.a), vec4<u32>(arg_2.a.x, arg_2.c.x, 5646u, u_input.a))))), _wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(arg_0.a.x, arg_2.c.x, arg_2.d.x, 256u))), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(1u, arg_0.c.x, 30639u, u_input.a)), ~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a.x, arg_2.c.x, arg_0.a.x, 39162u), vec4<u32>(arg_2.d.x, arg_2.d.x, 1u, arg_2.d.x)))));
    let var_1 = arg_2;
    let var_2 = func_1(func_1(arg_0, true, select(select(vec3<bool>(true, arg_3.x, true), arg_3, false), vec3<bool>(true, arg_3.x, true), arg_3)), (any(arg_3) || (true & arg_3.x)) && arg_3.x, arg_3).d << (~(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(65767u, 0u, 0u), vec3<u32>(4294967295u, arg_2.d.x, arg_0.d.x)))) % vec3<u32>(32u));
    return arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.a >> (u_input.a % 32u)), ~(~vec2<u32>(u_input.a, u_input.a)))), func_4(func_1(Struct_1(vec2<u32>(16313u, 4294967295u), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, -2147483647i, 5453i, -13256i), vec4<i32>(u_input.b, -23894i, u_input.b, u_input.b)), ~vec2<u32>(u_input.a, u_input.a), ~vec3<u32>(u_input.a, 1u, u_input.a)), true, vec3<bool>(true, all(vec3<bool>(false, false, true)), false)), vec3<f32>(-554f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -887f) * -211f), _wgslsmith_f_op_f32(f32(-1f) * -1236f)), func_1(func_1(func_1(Struct_1(vec2<u32>(4294967295u, 33778u), vec4<i32>(2147483647i, u_input.d, u_input.d, -9304i), vec2<u32>(u_input.a, u_input.a), vec3<u32>(14141u, 51347u, u_input.a)), true, vec3<bool>(false, false, true)), true, vec3<bool>(true, true, true)), true, vec3<bool>(select(true, false, true), all(vec2<bool>(true, false)), u_input.a == u_input.a)), vec3<bool>(!all(vec2<bool>(true, true)), !all(vec2<bool>(false, false)), false)), 86832u);
}

