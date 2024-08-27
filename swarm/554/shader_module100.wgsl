struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2 = Struct_2(-738f);

var<private> global2: vec2<u32> = vec2<u32>(1u, 7453u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> vec2<bool> {
    global2 = min(vec2<u32>(~countOneBits(u_input.a.x & 1u), (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global2.x, 49157u, 0u), vec4<u32>(4294967295u, global2.x, global2.x, 4294967295u)) >> (global2.x % 32u)) >> (~117303u % 32u)), vec2<u32>(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_sub_u32(~1u, countOneBits(u_input.a.x))), _wgslsmith_dot_vec3_u32(u_input.a << (reverseBits(u_input.a) % vec3<u32>(32u)), ~vec3<u32>(1u, u_input.a.x, 26105u))));
    var var_0 = !vec3<bool>(true, false, any(!select(arg_0, arg_0, true)));
    var var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_3.x, global1.a))), _wgslsmith_f_op_f32(f32(-1f) * -931f)));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -130f);
    global1 = Struct_2(435f);
    return vec2<bool>(false, false);
}

fn func_2() -> bool {
    global1 = Struct_2(global1.a);
    global1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -126f) * _wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a + global1.a) + global1.a))));
    let var_0 = all(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)) || true;
    var var_1 = !var_0;
    global2 = u_input.a.xz;
    return any(select(!func_3(vec4<bool>(var_0, true, false, false), Struct_1(1120f, global1.a, global1.a, vec2<f32>(global1.a, global1.a), global1.a), Struct_1(global1.a, -320f, global1.a, vec2<f32>(939f, 1000f), global1.a), vec4<f32>(global1.a, global1.a, global1.a, global1.a)), select(func_3(vec4<bool>(var_0, var_0, true, false), Struct_1(-1431f, -641f, global1.a, vec2<f32>(1047f, -3567f), global1.a), Struct_1(1076f, 699f, global1.a, vec2<f32>(-1834f, -1084f), global1.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, 912f, 649f, 409f) - vec4<f32>(global1.a, global1.a, global1.a, global1.a))), vec2<bool>(any(vec2<bool>(true, var_0)), !var_0), vec2<bool>(!var_0, true)), !(!select(vec2<bool>(true, var_0), vec2<bool>(true, var_0), vec2<bool>(true, false)))));
}

fn func_4(arg_0: bool, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = select(arg_1, arg_1, vec2<bool>(!arg_1.x, ~(u_input.a.x ^ u_input.a.x) > 28946u));
    let var_1 = max(-1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(2442i >> (1u % 32u), -1i, i32(-1i) * -2180i, _wgslsmith_mod_i32(-37993i, -36457i)), vec4<i32>(i32(-1i) * -4623i, 97698i, -24218i, 1i)));
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1008f, 1002f)))) + _wgslsmith_f_op_f32(ceil(global1.a)))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-164f - 744f)), global1.a))));
    global2 = ~u_input.a.xz ^ ~_wgslsmith_mod_vec2_u32(reverseBits(firstLeadingBit(vec2<u32>(0u, u_input.a.x))), ~firstLeadingBit(vec2<u32>(u_input.a.x, global2.x)));
    return Struct_1(-1181f, global1.a, _wgslsmith_f_op_f32(abs(-487f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a, var_2.a) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1328f, global1.a)))))) * vec2<f32>(-439f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1.a)), global1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.a))));
}

fn func_1(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = abs(u_input.a.x);
    var var_1 = func_4(all(vec3<bool>(true, true, true)), select(vec2<bool>(func_2() | func_3(vec4<bool>(false, true, false, false), Struct_1(527f, arg_0.d.x, arg_0.a, arg_0.d, -1303f), arg_0, vec4<f32>(1167f, -757f, -869f, -1888f)).x, true), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), true));
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a + arg_0.c)) + arg_0.e)));
    let var_2 = _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(_wgslsmith_mult_u32(61192u, global2.x), 10303u, _wgslsmith_mod_u32(87239u, var_0))), u_input.a, vec3<u32>(u_input.a.x, 4294967295u, 1u)), _wgslsmith_mod_vec3_u32(countOneBits(~u_input.a), ~u_input.a));
    let var_3 = -(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(select(vec2<i32>(-2147483647i, -14327i), vec2<i32>(-32676i, 10821i), vec2<bool>(true, true)), -vec2<i32>(1423i, 2147483647i)), -(~vec2<i32>(20018i, -35631i))) >> (u_input.a.zy % vec2<u32>(32u)));
    return ~(~vec4<u32>(~(~9216u), var_0, reverseBits(_wgslsmith_add_u32(0u, var_2.x)), select(~global2.x, max(var_0, 10596u), var_3.x != -19115i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    var var_1 = global1.a;
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1582f, -555f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.a, global1.a)) - 613f))) * -493f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.a)) + global1.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2077f, _wgslsmith_f_op_f32(select(-1660f, 654f, false))))))));
    var var_3 = max(var_0, _wgslsmith_dot_vec4_i32(~(~vec4<i32>(var_0, var_0, var_0, var_0) << (func_1(Struct_1(global1.a, -1023f, 739f, vec2<f32>(global1.a, global1.a), 281f)) % vec4<u32>(32u))), select(_wgslsmith_sub_vec4_i32(vec4<i32>(-37143i, var_0, var_0, var_0), ~vec4<i32>(-1i, var_0, 1i, 61174i)), abs(-vec4<i32>(var_0, var_0, var_0, -2386i)), global1.a < -1659f)));
    let var_4 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, _wgslsmith_f_op_f32(2441f - -291f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(522f, global1.a) + vec2<f32>(-1278f, -186f)) - _wgslsmith_div_vec2_f32(vec2<f32>(999f, global1.a), vec2<f32>(496f, 601f)))))));
    let var_5 = vec4<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(71869u, u_input.a.x, u_input.a.x, 38627u)), ~vec4<u32>(10205u, u_input.a.x, u_input.a.x, global2.x))), _wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(global2.x, 63976u, 0u, u_input.a.x)) ^ vec4<u32>(0u, 54580u, u_input.a.x, global2.x), ~(~vec4<u32>(1u, global2.x, global2.x, 0u)))), u_input.a.x, 4294967295u, _wgslsmith_mult_u32(~firstTrailingBit(u_input.a.x), 1u) ^ u_input.a.x);
    let var_6 = false;
    var var_7 = Struct_1(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-942f, _wgslsmith_f_op_f32(step(var_4.x, -320f))), 933f, any(!vec4<bool>(true, var_6, var_6, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1260f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_4), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1280f, 512f))))))), vec2<f32>(-309f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1843f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -927f)))), -firstTrailingBit(37082i), firstLeadingBit(-reverseBits(firstTrailingBit(vec4<i32>(1i, 1i, var_0, 39876i)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_4.x, 1696f), var_7.d)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) * _wgslsmith_f_op_f32(f32(-1f) * -1814f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_7.c))))), -865f, -249f));
}

