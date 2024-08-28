struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(105f, 328f, 1881f) * vec3<f32>(789f, 445f, 1646f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1081f, 1000f, -489f))) - vec3<f32>(_wgslsmith_f_op_f32(sign(1000f)), 1000f, -494f)) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1475f, -628f, 831f), _wgslsmith_div_vec3_f32(vec3<f32>(1168f, 1566f, 532f), vec3<f32>(898f, 119f, 1000f)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false))), vec3<f32>(_wgslsmith_f_op_f32(round(810f)), _wgslsmith_f_op_f32(-464f + -1362f), -925f)))), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1068f, -479f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1743f - -673f)), -1000f)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.c, 0u), vec3<u32>(44639u, u_input.c, u_input.c) & vec3<u32>(4294967295u, u_input.c, 7987u)), true, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1000f, -958f), -454f))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -2912f)), 855f, vec3<u32>(u_input.c, ~1u, ~(~u_input.c)), false, 1f), vec2<i32>(~(u_input.a.x ^ u_input.b.x), 1i));
    let var_1 = _wgslsmith_f_op_f32(abs(1000f));
    var var_2 = var_0.c;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(trunc(1f)), 988f, ~vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_2.c.x, 28470u), var_2.c), 4294967295u, ~1u), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-780f)), 1045f))) * _wgslsmith_f_op_f32(-684f + _wgslsmith_f_op_f32(-var_2.e))));
    var var_4 = vec4<i32>(u_input.b.x, max(u_input.b.x, _wgslsmith_clamp_i32(u_input.a.x, var_0.d.x, var_0.d.x)), 0i, ~_wgslsmith_dot_vec4_i32(select(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, var_0.d.x, -1i, var_0.d.x), vec4<i32>(var_0.d.x, var_0.d.x, 0i, 2147483647i)), vec4<i32>(u_input.b.x, 0i, 0i, 2147483647i), select(vec4<bool>(var_0.c.d, var_2.d, false, var_2.d), vec4<bool>(var_3.d, true, var_2.d, false), var_2.d)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-4106i, var_0.d.x, u_input.b.x), vec3<i32>(u_input.b.x, -31337i, u_input.a.x)), 1i, -12108i, -9135i)));
    return ~(~u_input.c);
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec3<bool>, arg_3: vec2<bool>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-180f - 2333f), _wgslsmith_f_op_f32(-327f + 2245f)))) - vec2<f32>(1f, 1f)));
    let var_1 = arg_3;
    var var_2 = any(!select(arg_2.yz, !select(var_1, vec2<bool>(false, false), false), vec2<bool>(arg_2.x, !var_1.x)));
    var_0 = vec2<f32>(var_0.x, var_0.x);
    var var_3 = abs(countOneBits(_wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, func_3()), 4294967295u)));
    return select(select(!select(vec4<bool>(true, arg_2.x, true, false), !vec4<bool>(arg_3.x, false, true, true), !vec4<bool>(var_1.x, false, var_1.x, false)), !select(select(vec4<bool>(false, var_1.x, var_1.x, true), vec4<bool>(false, false, false, arg_3.x), vec4<bool>(arg_0, false, arg_2.x, true)), select(vec4<bool>(arg_3.x, arg_3.x, arg_2.x, arg_2.x), vec4<bool>(true, arg_0, var_1.x, arg_3.x), arg_0), select(vec4<bool>(false, true, false, var_1.x), vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_0, arg_2.x, arg_2.x, false))), !vec4<bool>(any(arg_2), true, all(vec2<bool>(true, arg_2.x)), all(vec2<bool>(arg_3.x, arg_2.x)))), select(vec4<bool>(false, all(vec4<bool>(true, true, true, true)), var_1.x, true), !(!vec4<bool>(arg_0, false, false, false)), vec4<bool>(var_1.x, var_1.x, any(arg_2.xx), true)), vec4<bool>(arg_0, false, !((1u >= u_input.c) != all(vec4<bool>(true, var_1.x, arg_0, false))), arg_3.x));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: bool, arg_3: vec2<u32>) -> i32 {
    var var_0 = func_2((~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 50513u, 0u, 4294967295u), vec4<u32>(4294967295u, arg_3.x, arg_3.x, 3805u)) > countOneBits(9268u)) | false, 1i, !select(!vec3<bool>(false, arg_2, true), !(!vec3<bool>(false, arg_2, false)), any(vec4<bool>(arg_2, arg_2, arg_2, arg_2))), vec2<bool>(true, arg_2));
    var_0 = !select(func_2(var_0.x, 0i, var_0.yzz, var_0.zy), vec4<bool>(any(func_2(var_0.x, -12060i, vec3<bool>(var_0.x, false, var_0.x), var_0.yw)), _wgslsmith_add_i32(arg_1.x, u_input.b.x) != arg_1.x, all(select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(var_0.x, false, true, false), var_0.x)), true), !func_2(true, -u_input.a.x, vec3<bool>(false, true, var_0.x), var_0.wy).x);
    var_0 = !func_2(true, -u_input.b.x, vec3<bool>((1i << (u_input.c % 32u)) >= u_input.a.x, any(vec4<bool>(true, var_0.x, false, var_0.x)) || true, true), !vec2<bool>(true, var_0.x));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(586f, -1472f)), _wgslsmith_f_op_f32(trunc(-170f)), _wgslsmith_f_op_f32(f32(-1f) * -740f)))), Struct_1(_wgslsmith_div_f32(477f, _wgslsmith_f_op_f32(step(-1138f, _wgslsmith_f_op_f32(max(762f, -1000f))))), 873f, ~vec3<u32>(countOneBits(arg_3.x), ~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, arg_0.x), vec3<u32>(arg_0.x, u_input.c, 0u))), !(!arg_2) && func_2(true, -1i, var_0.wxz, vec2<bool>(arg_2, arg_2)).x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1543f))))), Struct_1(865f, _wgslsmith_f_op_f32(trunc(1f)), vec3<u32>(arg_3.x, abs(4294967295u), ~arg_0.x), any(!select(vec3<bool>(arg_2, true, false), vec3<bool>(false, var_0.x, false), false)), -241f), select(select(-firstTrailingBit(vec2<i32>(39499i, -26233i)), -arg_1, !(-2147483647i <= u_input.a.x)), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a.x, 0i), min(arg_1.x, 4349i)), _wgslsmith_div_i32(u_input.b.x, reverseBits(arg_1.x))), var_0.zz));
    let var_2 = vec3<u32>(~11689u << ((var_1.b.c.x >> (abs(_wgslsmith_clamp_u32(4294967295u, arg_3.x, arg_3.x)) % 32u)) % 32u), ~_wgslsmith_mult_u32(u_input.c, 25454u), 1u);
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(abs(vec4<i32>(_wgslsmith_clamp_i32(-1i, -1i, u_input.a.x), _wgslsmith_div_i32(3262i, 1i), 1i, ~u_input.b.x))) >> (~vec4<u32>(68573u, u_input.c, _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.c, u_input.c), 4294967295u), ~(~u_input.c)) % vec4<u32>(32u));
    var_0 = -(~max(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 12728i, u_input.b.x, var_0.x), vec4<i32>(u_input.a.x, -5794i, var_0.x, 49662i)), -1094i & u_input.a.x, func_1(vec4<u32>(56716u, u_input.c, 0u, 16991u), vec2<i32>(var_0.x, var_0.x), true, vec2<u32>(65333u, u_input.c)), 1i), vec4<i32>(-1i << (u_input.c % 32u), -var_0.x, -6041i, -var_0.x)));
    var var_1 = ~(-var_0.x);
    var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -33829i, abs(u_input.b.x), firstTrailingBit(var_0.x)) << (vec4<u32>(~0u, countOneBits(61680u), u_input.c, _wgslsmith_div_u32(1u, 4294967295u)) % vec4<u32>(32u)), vec4<i32>(24567i, 2147483647i, -u_input.a.x & ~(-51276i), u_input.b.x), _wgslsmith_div_vec4_i32(reverseBits(~vec4<i32>(u_input.b.x, u_input.b.x, var_0.x, u_input.a.x)), vec4<i32>(~u_input.a.x, 1i, i32(-1i) * -2147483647i, 0i))) | select(-vec4<i32>(21651i, -2147483647i, i32(-1i) * -2147483647i, 1i), abs(vec4<i32>(39888i, 2147483647i, 0i, u_input.b.x << (1u % 32u))), select(vec4<bool>(true, var_0.x <= -38569i, any(vec3<bool>(true, false, true)), any(vec2<bool>(false, true))), vec4<bool>(true, true, var_0.x != u_input.a.x, var_0.x > var_0.x), !all(vec4<bool>(false, true, false, false))));
    let var_2 = countOneBits(u_input.c) > _wgslsmith_div_u32(25705u, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(401f, -433f))));
}

