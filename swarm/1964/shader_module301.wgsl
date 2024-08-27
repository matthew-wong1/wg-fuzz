struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: vec3<bool>) -> vec3<bool> {
    var var_0 = ~vec4<u32>(~1u | u_input.c, 4294967295u, u_input.a, u_input.e.x);
    return vec3<bool>(true, arg_2.x, var_0.x <= _wgslsmith_mult_u32(19257u, ~var_0.x));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: u32, arg_3: bool) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1798f, -219f, 640f, -705f), vec4<f32>(-374f, -1210f, -1755f, 600f), vec4<bool>(false, arg_3, arg_3, true))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1399f, 672f, -394f, -124f) - vec4<f32>(-339f, 1561f, -609f, -366f))), vec4<f32>(216f, _wgslsmith_f_op_f32(sign(435f)), -1204f, -282f)), vec4<f32>(1f, 1f, 1f, 1f)));
    var var_1 = Struct_2(Struct_1(abs(vec4<u32>(u_input.b.x, u_input.c, min(u_input.c, arg_2), u_input.d.x)), !func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 600f, var_0.x)), _wgslsmith_div_vec3_i32(vec3<i32>(arg_0, arg_0, arg_0), vec3<i32>(-15715i, -2147483647i, arg_0)), !vec3<bool>(arg_3, false, true)), arg_3, _wgslsmith_sub_u32(arg_1, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_2, arg_2, arg_2), arg_1))), Struct_1(vec4<u32>(_wgslsmith_div_u32(5466u, arg_2), arg_2, _wgslsmith_div_u32(u_input.e.x, _wgslsmith_sub_u32(1u, 0u)), firstLeadingBit(arg_2)), vec3<bool>(any(select(vec2<bool>(arg_3, arg_3), vec2<bool>(true, false), arg_3)), true, true), (arg_3 | true) || arg_3, _wgslsmith_add_u32(~_wgslsmith_mod_u32(u_input.b.x, arg_2), _wgslsmith_dot_vec2_u32(u_input.e, abs(vec2<u32>(arg_2, arg_2))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))), 579f)) - -472f), Struct_1(abs(u_input.b), !select(!vec3<bool>(true, arg_3, arg_3), !vec3<bool>(arg_3, arg_3, arg_3), arg_3), any(select(vec2<bool>(false, arg_3), vec2<bool>(arg_3, arg_3), vec2<bool>(false, arg_3))), arg_2), 81361i);
    var_1 = Struct_2(Struct_1(~(~abs(u_input.b)), select(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 372f, var_0.x)), abs(vec3<i32>(var_1.e, 2147483647i, 11354i)), select(var_1.a.b, vec3<bool>(var_1.b.c, var_1.d.b.x, var_1.b.b.x), var_1.b.b)), select(select(vec3<bool>(arg_3, true, var_1.a.c), vec3<bool>(arg_3, false, arg_3), var_1.a.b), var_1.b.b, !var_1.b.b), false), !arg_3, var_1.a.d), var_1.d, -644f, Struct_1(select(vec4<u32>(arg_2, countOneBits(4294967295u), ~arg_1, _wgslsmith_add_u32(var_1.d.a.x, 48533u)), var_1.d.a, vec4<bool>(true, false, any(vec3<bool>(false, true, true)), arg_3 || arg_3)), select(var_1.d.b, !select(vec3<bool>(false, true, false), var_1.d.b, var_1.b.b), ~var_1.b.d < _wgslsmith_add_u32(28547u, 25365u)), !(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, arg_2, arg_2), vec3<u32>(41499u, 1u, var_1.b.a.x)) < _wgslsmith_mult_u32(u_input.a, arg_2)), arg_1), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(reverseBits(select(vec2<i32>(var_1.e, -1i), vec2<i32>(-1i, 2147483647i), arg_3)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-6524i, var_1.e, var_1.e), vec3<i32>(arg_0, 6938i, var_1.e)), var_1.e), vec2<i32>(-4444i, arg_0 ^ 1i)), _wgslsmith_div_vec2_i32(-vec2<i32>(arg_0, var_1.e), reverseBits(vec2<i32>(var_1.e, var_1.e)))));
    var var_2 = var_1.d.a.zzw;
    let var_3 = Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, abs(_wgslsmith_sub_u32(arg_2, arg_1)), _wgslsmith_div_u32(reverseBits(arg_2), abs(var_2.x)), 39563u), _wgslsmith_clamp_vec4_u32(vec4<u32>(~29530u, 72694u & u_input.a, _wgslsmith_mult_u32(arg_2, var_2.x), select(12147u, 0u, true)), vec4<u32>(var_1.b.d >> (var_1.a.d % 32u), 8594u, ~arg_2, var_2.x), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, 4294967295u, 4294967295u, var_2.x), var_1.b.a))), vec3<bool>(arg_3, arg_3, all(vec2<bool>(var_1.a.b.x | arg_3, true))), var_1.d.c, 43558u);
    return vec4<bool>(true, !(!func_3(vec3<f32>(833f, -603f, var_1.c), vec3<i32>(var_1.e, arg_0, -26892i), vec3<bool>(var_1.a.b.x, arg_3, var_1.d.c)).x) & var_3.c, var_1.b.c, false);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> u32 {
    var var_0 = func_2(-1i, 4294967295u, _wgslsmith_sub_u32(arg_2.a.x, u_input.b.x), arg_2.c);
    let var_1 = abs(16554i);
    var_0 = vec4<bool>(true, arg_2.b.x, !(arg_0.c | any(vec3<bool>(false, var_0.x, true))), !func_2(_wgslsmith_sub_i32(abs(var_1), var_1), 46489u, _wgslsmith_mod_u32(1110u, arg_0.a.x) ^ (arg_2.a.x >> (arg_0.a.x % 32u)), func_3(vec3<f32>(-351f, -654f, -672f), vec3<i32>(-6699i, var_1, 0i), vec3<bool>(arg_0.c, arg_2.c, true)).x != var_0.x).x);
    let var_2 = true;
    let var_3 = Struct_2(Struct_1(select(firstTrailingBit(~vec4<u32>(arg_2.d, 76231u, u_input.c, arg_0.d)), ~(~vec4<u32>(u_input.a, 0u, 61795u, arg_0.d)), all(vec3<bool>(true, true, arg_2.b.x))), arg_2.b, true, 28618u), Struct_1(~_wgslsmith_sub_vec4_u32(vec4<u32>(23217u, arg_0.d, arg_2.d, 3086u), ~vec4<u32>(arg_2.a.x, 0u, 50377u, arg_2.d)), vec3<bool>(true, true, true), !func_2(_wgslsmith_mult_i32(var_1, var_1), _wgslsmith_mod_u32(3474u, 6184u), 26727u, true).x, 4294967295u & (u_input.b.x >> (u_input.e.x % 32u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1590f, 1062f)), -1000f)))), arg_2, min(-abs(19340i), 2147483647i));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_add_vec4_u32(abs(vec4<u32>(80687u, func_1(Struct_1(vec4<u32>(26601u, u_input.d.x, u_input.d.x, u_input.d.x), vec3<bool>(false, true, true), false, u_input.b.x), false, Struct_1(vec4<u32>(u_input.c, u_input.d.x, 46147u, 20634u), vec3<bool>(false, false, true), false, u_input.c)), countOneBits(1u), u_input.a)), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.c, u_input.e.x, 0u, 4294967295u)), vec4<u32>(_wgslsmith_clamp_u32(1u, 1564u, u_input.b.x), ~0u, u_input.e.x, ~u_input.c))), func_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1116f, -1000f, -259f) - vec3<f32>(-562f, 1131f, 2483f))))), vec3<i32>(countOneBits(_wgslsmith_clamp_i32(-1i, 0i, -8351i)), -2147483647i, i32(-1i) * -1i), vec3<bool>(true, !any(vec3<bool>(false, true, true)), all(vec4<bool>(false, false, false, false)))), false, ~_wgslsmith_sub_u32(~_wgslsmith_add_u32(u_input.e.x, u_input.d.x), _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a, u_input.d.x), _wgslsmith_add_u32(1u, u_input.c))));
    var var_1 = all(vec3<bool>((1i < _wgslsmith_dot_vec2_i32(vec2<i32>(21278i, 0i), vec2<i32>(2147483647i, -40549i))) && true, any(!vec3<bool>(true, true, var_0.b.x)), 10247u >= select(var_0.d, 61563u, func_2(55375i, 4294967295u, u_input.d.x, true).x)));
    var var_2 = 19703i;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(min(-697f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-415f + _wgslsmith_f_op_f32(min(-182f, 853f))))))), -771f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(595f + 1194f), 321f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-917f)))))));
    let var_4 = var_0.a.zx;
    var_2 = _wgslsmith_mod_i32(firstTrailingBit(countOneBits(-20700i) << (var_0.d % 32u)), 7264i >> (var_0.d % 32u));
    var var_5 = var_0.b.zx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_3)), vec3<f32>(var_3.x, 186f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1878f, var_3.x))))), _wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(-396f - var_3.x)), _wgslsmith_clamp_i32(7574i & select(-8501i, -22921i, var_0.b.x), -_wgslsmith_mod_i32(-1i, -2147483647i), _wgslsmith_div_i32(~(-9504i), i32(-1i) * -2147483647i)) | firstTrailingBit(~(-20913i)), firstTrailingBit(_wgslsmith_sub_vec3_i32(firstLeadingBit(~vec3<i32>(-2147483647i, 1i, -2147483647i)), vec3<i32>(1i, 1i, 1i))));
}

