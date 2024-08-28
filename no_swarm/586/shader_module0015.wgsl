struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> u32 {
    let var_0 = vec4<u32>(~(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.x), u_input.b.xx), u_input.d.x)), u_input.d.x, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_0.x, 60504u, arg_0.x, u_input.d.x)), vec4<u32>(abs(arg_0.x), 1u, select(abs(12112u), ~arg_0.x, true), arg_0.x)), arg_0.x);
    var var_1 = -915f;
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -281f)), _wgslsmith_f_op_f32(273f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(868f, -396f))))), select(!((u_input.a.x >= 1i) & false), arg_1.a.x, arg_1.a.x)));
    var var_3 = Struct_1(select(select(!arg_1.a, !arg_1.a, !arg_1.a.x), !arg_1.a, !all(vec3<bool>(true, arg_1.a.x, true))));
    var var_4 = var_0.xwx;
    return _wgslsmith_mod_u32(~63332u, _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, var_4.x, 0u), arg_0), countOneBits(~u_input.b.x), ~firstLeadingBit(arg_0.x), 4294967295u), vec4<u32>(_wgslsmith_mod_u32(var_4.x, var_0.x), 8364u, 84359u, 4294967295u) ^ (select(var_0, vec4<u32>(arg_0.x, u_input.d.x, 30831u, 60532u), vec4<bool>(arg_1.a.x, var_3.a.x, false, arg_1.a.x)) & _wgslsmith_mod_vec4_u32(vec4<u32>(55581u, u_input.d.x, var_4.x, 0u), vec4<u32>(var_4.x, var_4.x, u_input.d.x, 1u)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>) -> vec4<i32> {
    var var_0 = ~(u_input.d.x & _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(2874u, 0u) << (vec2<u32>(u_input.b.x, u_input.d.x) % vec2<u32>(32u))), vec2<u32>(14765u, _wgslsmith_mod_u32(0u, 69030u))));
    let var_1 = Struct_1(vec3<bool>(~u_input.b.x > _wgslsmith_sub_u32(countOneBits(u_input.d.x), _wgslsmith_mod_u32(u_input.b.x, u_input.d.x)), true, !(_wgslsmith_mod_i32(arg_1.x, -1i) < u_input.a.x)));
    var var_2 = func_3(abs(max(u_input.b, vec3<u32>(~u_input.b.x, u_input.d.x | u_input.d.x, u_input.d.x))), Struct_1(!arg_0.a));
    var var_3 = 8083i;
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(574f, -687f, 299f, -1197f) * vec4<f32>(174f, -462f, 107f, -401f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -142f) + _wgslsmith_f_op_f32(1673f * 244f)), -1088f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1543f + -1124f)), -385f)));
    return firstLeadingBit(_wgslsmith_mod_vec4_i32(min(select(vec4<i32>(arg_1.x, arg_1.x, 2147483647i, arg_1.x), vec4<i32>(arg_1.x, arg_1.x, arg_1.x, 1i), vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.a.x)), countOneBits(vec4<i32>(arg_1.x, u_input.c, -29653i, -44519i))), abs(abs(vec4<i32>(arg_1.x, arg_1.x, arg_1.x, 0i))))) & ~vec4<i32>(u_input.c, _wgslsmith_mod_i32(0i, select(-37024i, u_input.c, true)), u_input.a.x, u_input.a.x);
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> f32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-1f), -1000f);
    var var_1 = select(~(vec4<i32>(1i, -914i, 3557i, 8425i) ^ vec4<i32>(u_input.a.x, u_input.c, -14223i, u_input.a.x)), select(select(-vec4<i32>(u_input.c, u_input.a.x, 0i, u_input.a.x), func_2(Struct_1(arg_1.a), vec3<i32>(u_input.c, u_input.a.x, u_input.c)), select(vec4<bool>(false, arg_1.a.x, true, arg_1.a.x), vec4<bool>(arg_1.a.x, true, false, true), true)), ~vec4<i32>(39698i, -1i, u_input.c, -5659i), true), select(!(!vec4<bool>(arg_1.a.x, false, true, true)), vec4<bool>(true, !arg_1.a.x, true, false && arg_1.a.x), select(select(vec4<bool>(arg_1.a.x, false, true, arg_1.a.x), vec4<bool>(false, false, true, false), true), select(vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, true), vec4<bool>(arg_1.a.x, arg_1.a.x, false, arg_1.a.x), vec4<bool>(arg_1.a.x, false, false, arg_1.a.x)), var_0.x >= -959f))) << (_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(arg_0, 28488u, u_input.b.x, arg_0)) & vec4<u32>(arg_0 ^ arg_0, 37984u, 456u | u_input.d.x, 24767u), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0 << (1u % 32u), 51728u ^ arg_0, 4294967295u, arg_0 ^ 844u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(28852u, arg_0, arg_0, 4294967295u), vec4<u32>(arg_0, 61917u, u_input.d.x, arg_0)))) % vec4<u32>(32u));
    var_1 = vec4<i32>(31958i, ~(~(~u_input.a.x)), ~var_1.x, -2147483647i);
    var_1 = vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(~1i, u_input.c), -(abs(var_1.x) << (18933u % 32u)), -1i | _wgslsmith_add_i32(max(var_1.x, 25173i), -2147483647i ^ u_input.a.x)), u_input.c & u_input.c, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(~(var_1.zzx ^ vec3<i32>(1i, -6043i, 0i)), vec3<i32>(-1i) * -var_1.wyy), abs(var_1.yyw) << ((abs(vec3<u32>(4294967295u, 79189u, u_input.b.x)) & vec3<u32>(13853u, arg_0, 20113u)) % vec3<u32>(32u))), _wgslsmith_div_i32(~var_1.x, ~var_1.x));
    var var_2 = arg_1;
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(13426u, Struct_1(vec3<bool>(true, false, false))))) * _wgslsmith_f_op_f32(-1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1608f - 1153f) * -217f), 527f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1435f, _wgslsmith_f_op_f32(1032f + -1367f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 893f)))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(168f, 836f))), vec2<f32>(975f, -469f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))));
    var var_1 = u_input.b.x | _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32((vec3<u32>(u_input.d.x, 1u, u_input.d.x) << (u_input.b % vec3<u32>(32u))) ^ _wgslsmith_div_vec3_u32(vec3<u32>(5024u, 51529u, u_input.d.x), vec3<u32>(1u, u_input.b.x, 22711u)), (u_input.b << (u_input.b % vec3<u32>(32u))) << (_wgslsmith_sub_vec3_u32(u_input.b, u_input.b) % vec3<u32>(32u))), (firstTrailingBit(vec3<u32>(u_input.d.x, 0u, 1u)) ^ _wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(u_input.d.x, 1u, 52439u))) >> (vec3<u32>(1u, u_input.b.x, 27810u) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_div_i32(u_input.c, _wgslsmith_add_i32(_wgslsmith_mod_i32(-u_input.c, -u_input.a.x), ~(~(-2147483647i))) << (1862u % 32u));
    var var_3 = ~(_wgslsmith_mod_i32(-1i, i32(-1i) * -1i) & -u_input.c);
    var_3 = _wgslsmith_div_i32(firstLeadingBit(-u_input.a.x), -firstTrailingBit(-_wgslsmith_clamp_i32(-28089i, -9107i, 26080i)));
    let var_4 = Struct_1(vec3<bool>(true, select(false, false, true), all(vec2<bool>(true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(392f, _wgslsmith_div_f32(var_0.x, var_0.x)))), _wgslsmith_f_op_f32(round(-992f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1000f))))));
}

