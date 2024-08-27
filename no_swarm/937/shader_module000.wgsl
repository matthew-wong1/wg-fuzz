struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, -616f, vec2<i32>(0i, -7866i), 0i);

var<private> global1: array<vec2<u32>, 7> = array<vec2<u32>, 7>(vec2<u32>(0u, 4294967295u), vec2<u32>(44383u, 22923u), vec2<u32>(31075u, 38163u), vec2<u32>(12014u, 1u), vec2<u32>(0u, 1u), vec2<u32>(21685u, 4294967295u), vec2<u32>(4155u, 0u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> f32 {
    var var_0 = Struct_1(global0.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1.b, arg_1.b)))))), ~vec2<i32>(abs(~arg_1.d), ~(-global0.c.x)), global0.d & (countOneBits(arg_1.c.x) ^ global0.d));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(arg_1.b, arg_1.b))))))));
    var var_2 = min(firstTrailingBit(-98024i), -33409i);
    global1 = array<vec2<u32>, 7>();
    global1 = array<vec2<u32>, 7>();
    return _wgslsmith_f_op_f32(f32(-1f) * -632f);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_3) -> vec4<bool> {
    global0 = Struct_1(arg_0.x, 472f, -vec2<i32>(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, -1i), vec4<i32>(u_input.c, u_input.c, u_input.c, 2147483647i))), min(i32(-1i) * -8651i, abs(u_input.c))), ~2147483647i);
    global0 = Struct_1(any(select(arg_0.xy, !arg_0.zy, vec2<bool>(true, true))), _wgslsmith_f_op_f32(func_3(min(_wgslsmith_div_u32(arg_1.a.x, 18772u), min(u_input.a.x, arg_1.a.x)) >> (~(~36006u) % 32u), Struct_1(all(vec2<bool>(global0.a, global0.a)) | (arg_0.x & arg_0.x), 1714f, ~countOneBits(global0.c), 68271i), 583f)), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 1i, global0.c.x, global0.d), vec4<i32>(1i, global0.d, u_input.c, u_input.c)), firstTrailingBit(vec4<i32>(2147483647i, global0.d, 2147483647i, -1i))), global0.c.x), i32(-1i) * -35443i), global0.d);
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1000f, global0.b, false)))))))));
    var var_1 = vec4<u32>(u_input.b.x, ~(4294967295u >> ((~arg_1.a.x << (~11313u % 32u)) % 32u)), _wgslsmith_dot_vec3_u32(arg_1.a.xxz, _wgslsmith_mod_vec3_u32(~(vec3<u32>(u_input.b.x, 0u, 27881u) & vec3<u32>(4294967295u, u_input.b.x, 13822u)), arg_1.a.zxz)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.a.xz, arg_1.a.xy) >> (_wgslsmith_mod_u32(arg_1.a.x, 46633u) % 32u), 0u << (_wgslsmith_add_u32(u_input.a.x, 1u) % 32u)), 53767u));
    return vec4<bool>(any(!select(vec4<bool>(true, global0.a, true, arg_0.x), select(vec4<bool>(false, arg_0.x, false, global0.a), vec4<bool>(global0.a, arg_0.x, arg_0.x, global0.a), vec4<bool>(false, arg_0.x, global0.a, false)), vec4<bool>(global0.a, arg_0.x, global0.a, global0.a))), true, true, !any(vec2<bool>(true, true)));
}

fn func_1(arg_0: vec3<bool>) -> u32 {
    var var_0 = Struct_1(false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.b))), _wgslsmith_f_op_f32(exp2(global0.b))), global0.c, ~(~(~global0.c.x ^ ~global0.d)));
    let var_1 = Struct_1((true || var_0.a) == (firstTrailingBit(global0.c.x) <= u_input.c), 493f, global0.c, i32(-1i) * -61995i);
    global1 = array<vec2<u32>, 7>();
    global1 = array<vec2<u32>, 7>();
    global0 = Struct_1(any(!func_2(vec3<bool>(true, false, true), Struct_3(vec4<u32>(55851u, 4294967295u, u_input.b.x, 24900u)))) || !global0.a, global0.b, max(_wgslsmith_add_vec2_i32(~var_0.c, var_0.c), reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, var_0.d), var_1.c))) >> (vec2<u32>(max(26138u, ~4294967295u), _wgslsmith_add_u32(~u_input.b.x, _wgslsmith_add_u32(u_input.a.x, 4294967295u))) % vec2<u32>(32u)), -45449i);
    return u_input.b.x;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: bool) -> Struct_3 {
    global1 = array<vec2<u32>, 7>();
    global1 = array<vec2<u32>, 7>();
    global1 = array<vec2<u32>, 7>();
    let var_0 = arg_2.a.b < _wgslsmith_f_op_f32(-arg_0.x);
    var var_1 = Struct_3(vec4<u32>(abs(u_input.b.x), _wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, u_input.b.x ^ u_input.b.x, ~0u), _wgslsmith_clamp_u32(u_input.a.x, func_1(vec3<bool>(arg_2.a.a, true, false)), 0u)), func_1(select(select(vec3<bool>(false, global0.a, arg_2.a.a), vec3<bool>(arg_3, var_0, false), vec3<bool>(global0.a, arg_3, arg_3)), !vec3<bool>(false, global0.a, var_0), vec3<bool>(global0.a, false, false))), firstTrailingBit(max(~0u, ~4294967295u))));
    return Struct_3(vec4<u32>(~u_input.a.x, u_input.a.x, (1u | u_input.a.x) >> (~(~var_1.a.x) % 32u), ~72082u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(-global0.b))), 1166f), _wgslsmith_clamp_vec4_i32(vec4<i32>(~abs(global0.c.x), _wgslsmith_sub_i32(u_input.c, u_input.c) & (global0.c.x | u_input.c), u_input.c, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(global0.c.x, 2147483647i, 58773i, global0.c.x)), vec4<i32>(-2147483647i, u_input.c, global0.d, global0.c.x) | vec4<i32>(global0.c.x, -57193i, -2147483647i, -20940i))), vec4<i32>(abs(30589i), global0.d >> (func_1(vec3<bool>(false, global0.a, global0.a)) % 32u), _wgslsmith_div_i32(global0.c.x, 1i), u_input.c), -reverseBits(-vec4<i32>(u_input.c, 1i, global0.d, 27609i))), Struct_2(Struct_1(all(vec3<bool>(true, global0.a, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b * -235f) - -701f), vec2<i32>(55720i, ~(-20815i)), _wgslsmith_mult_i32(u_input.c & global0.c.x, min(-39694i, global0.c.x)))), u_input.c <= u_input.c);
    let var_1 = vec3<i32>(-2147483647i, abs(abs(-_wgslsmith_div_i32(0i, global0.d))), u_input.c);
    global1 = array<vec2<u32>, 7>();
    global1 = array<vec2<u32>, 7>();
    var var_2 = ~(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(u_input.b.x, 29025u), _wgslsmith_mod_u32(u_input.b.x, 3715u), u_input.a.x), abs(abs(var_0.a))) ^ vec4<u32>(4294967295u, abs(u_input.a.x), 14510u, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(select(global0.b, global0.b, false)), -130f, _wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1379f, 1054f, -341f), _wgslsmith_div_vec3_f32(vec3<f32>(global0.b, global0.b, 547f), vec3<f32>(global0.b, 1019f, global0.b)))), vec3<bool>(global0.a, global0.a, global0.a))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.b, -387f, -184f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-158f, 1017f, global0.b)))))), vec4<i32>(_wgslsmith_add_i32(global0.d, 2147483647i), ~(-(~(-2147483647i))), 1i, max(~_wgslsmith_dot_vec3_i32(var_1, vec3<i32>(1i, -1i, -1i)), u_input.c)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, -553f, -322f, 1277f)) * vec4<f32>(1278f, -2066f, -758f, global0.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, 143f, global0.b, -1159f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, global0.b, global0.b, -260f)))));
}

