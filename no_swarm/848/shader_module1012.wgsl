struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
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

var<private> global0: array<f32, 23> = array<f32, 23>(649f, 1000f, 342f, 1381f, -184f, -222f, -1388f, -826f, 321f, 1105f, -470f, 436f, -1142f, 711f, 214f, -1788f, 1949f, -104f, -662f, 1038f, 1000f, 486f, 166f);

var<private> global1: Struct_2 = Struct_2(vec4<f32>(-125f, -1294f, 1000f, 1558f), 1i, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: vec4<f32>) -> Struct_2 {
    global0 = array<f32, 23>();
    var var_0 = global0[_wgslsmith_index_u32(u_input.c, 23u)];
    var var_1 = -529f;
    var var_2 = Struct_2(vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-529f, -450f))), arg_2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-882f - _wgslsmith_f_op_f32(min(410f, arg_2.x)))))), global1.b, false);
    var_0 = _wgslsmith_f_op_f32(-global1.a.x);
    return Struct_2(vec4<f32>(global0[_wgslsmith_index_u32(reverseBits(arg_1.x), 23u)], _wgslsmith_f_op_f32(arg_2.x * global1.a.x), _wgslsmith_f_op_f32(344f + _wgslsmith_f_op_f32(min(global1.a.x, _wgslsmith_f_op_f32(ceil(var_2.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -911f))), ~(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(global1.b, -1i, u_input.a.x, -14077i), vec4<i32>(global1.b, u_input.b.x, u_input.b.x, 10106i)))), true);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: bool, arg_3: vec3<i32>) -> bool {
    let var_0 = global1.a;
    let var_1 = Struct_1(countOneBits(_wgslsmith_mod_i32(1i, abs(u_input.a.x))) >> (u_input.c % 32u), 723f, u_input.c, ~u_input.c);
    global0 = array<f32, 23>();
    global1 = func_1(any(select(vec2<bool>(true, true), select(vec2<bool>(arg_2, arg_2), vec2<bool>(true, false), vec2<bool>(global1.c, false)), false)) | !global1.c, vec2<u32>(firstTrailingBit(var_1.d), firstLeadingBit(103172u)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2878f + global1.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(974f * var_1.b))), -1888f))));
    let var_2 = firstTrailingBit(_wgslsmith_add_i32(global1.b, _wgslsmith_mod_i32(1i, var_1.a)));
    return !(!(-279f > _wgslsmith_f_op_f32(ceil(func_1(arg_2, vec2<u32>(14129u, 1u), vec4<f32>(658f, -366f, global1.a.x, -374f)).a.x))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<u32>) -> u32 {
    global1 = func_1(true, countOneBits(arg_1.zw | _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 16688u), vec2<u32>(u_input.c, arg_1.x))), global1.a);
    let var_0 = _wgslsmith_f_op_f32(step(-1164f, 604f));
    global1 = func_1(global1.c, ~_wgslsmith_clamp_vec2_u32(arg_1.zy, _wgslsmith_mult_vec2_u32(reverseBits(arg_1.yz), countOneBits(arg_1.xz)), ~arg_1.yw), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global1.a))) - vec4<f32>(844f, global1.a.x, -980f, global0[_wgslsmith_index_u32(arg_1.x, 23u)])))));
    global0 = array<f32, 23>();
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(785f - global1.a.x), _wgslsmith_f_op_f32(step(702f, global0[_wgslsmith_index_u32(arg_1.x, 23u)])), global1.a.x, _wgslsmith_f_op_f32(-global1.a.x))), vec4<f32>(-227f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(231f - global0[_wgslsmith_index_u32(23591u, 23u)])), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -841f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-734f)), _wgslsmith_f_op_f32(var_0 + global1.a.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.a + global1.a) * _wgslsmith_f_op_vec4_f32(trunc(global1.a))));
    return firstTrailingBit(countOneBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(32166u, u_input.c), vec2<u32>(67000u, 1u))));
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_3 {
    var var_0 = 32030u;
    var var_1 = global0[_wgslsmith_index_u32(func_4(!select(vec3<bool>(func_3(vec3<i32>(u_input.b.x, arg_0, -1i), vec3<f32>(global0[_wgslsmith_index_u32(8310u, 23u)], global0[_wgslsmith_index_u32(u_input.c, 23u)], -1994f), global1.c, u_input.a), arg_1, arg_1), !(!vec3<bool>(global1.c, arg_1, false)), global1.c), vec4<u32>(u_input.c, _wgslsmith_mult_u32(12759u | u_input.c, 1u), u_input.c, ~(~u_input.c) ^ (0u ^ ~u_input.c))), 23u)];
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-580f, global0[_wgslsmith_index_u32(4294967295u, 23u)], 313f, -1501f)))) * vec4<f32>(-364f, -1050f, _wgslsmith_f_op_f32(-821f + global1.a.x), _wgslsmith_f_op_f32(-550f * -1596f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(global1.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1440f, 1000f, -495f, 467f) * vec4<f32>(global1.a.x, -1347f, 559f, global0[_wgslsmith_index_u32(u_input.c, 23u)]))))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(func_1(select(global1.c, global1.c, true), vec2<u32>(u_input.c, u_input.c) >> (vec2<u32>(25231u, u_input.c) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(round(global1.a))).a)), global1.a)));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(max(-1320f, func_1(arg_1, abs(vec2<u32>(u_input.c, 60126u)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(31344u, u_input.c), vec2<u32>(u_input.c, u_input.c)) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a) + _wgslsmith_f_op_vec4_f32(step(global1.a, global1.a)))).a.x)), ~_wgslsmith_div_u32(u_input.c, u_input.c), max(arg_0, -47879i), u_input.c);
    global0 = array<f32, 23>();
    return var_3;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global1.a.xy)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1632f, global0[_wgslsmith_index_u32(4294967295u, 23u)]) + vec2<f32>(1217f, 793f))))) - _wgslsmith_div_vec2_f32(global1.a.wz, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-632f, global1.a.x))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)), -488f) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, -261f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global1.a.xz)) + _wgslsmith_f_op_vec2_f32(select(global1.a.xz, global1.a.xw, vec2<bool>(false, global1.c)))))));
    global0 = array<f32, 23>();
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-474f + 768f))))));
    var var_2 = arg_2;
    global1 = func_1(var_1 < _wgslsmith_f_op_f32(-var_1), ~(vec2<u32>(0u, arg_1.c) ^ vec2<u32>(var_2.b << (arg_1.d % 32u), 4294967295u)), global1.a);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(true, _wgslsmith_add_vec2_u32(~countOneBits(~vec2<u32>(u_input.c, 116517u)), ~vec2<u32>(firstLeadingBit(4294967295u), ~4294967295u)), global1.a);
    let var_0 = func_5(vec3<i32>(-min(16049i, -global1.b), ~global1.b, -1i), Struct_1(-43829i, 666f, 38897u, u_input.c), func_2(1i, !global1.c));
    var var_1 = u_input.c;
    global1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(func_2(u_input.b.x >> (var_0.b % 32u), true).a + _wgslsmith_div_f32(global1.a.x, func_1(false, vec2<u32>(var_0.b, 10632u), global1.a).a.x)), -355f, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(trunc(1782f))), u_input.b.x & ~var_0.c, global1.c);
    var var_2 = var_0;
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(22876u, 1u), 23u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1464f - var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-871f * 380f)), _wgslsmith_f_op_f32(969f - _wgslsmith_f_op_f32(689f + global0[_wgslsmith_index_u32(1u, 23u)]))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1312f - -1057f) * _wgslsmith_f_op_f32(func_2(var_0.c, true).a - _wgslsmith_f_op_f32(step(2446f, -297f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(351f - _wgslsmith_f_op_f32(sign(var_0.a))) * _wgslsmith_f_op_f32(floor(func_1(global1.c, vec2<u32>(51964u, u_input.c), vec4<f32>(-198f, 1558f, var_0.a, 589f)).a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(157f * global0[_wgslsmith_index_u32(var_0.d, 23u)]))) - _wgslsmith_f_op_f32(f32(-1f) * -489f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 23u)], var_0.a) - _wgslsmith_f_op_f32(-637f * -1401f)))), func_1(!(!(!global1.c)), ~abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.d, 0u), vec2<u32>(u_input.c, 49021u), vec2<u32>(u_input.c, 168260u))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.a + var_0.a))), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.a.x, var_0.a)) + _wgslsmith_f_op_f32(f32(-1f) * -564f)), global0[_wgslsmith_index_u32(~var_2.b | select(u_input.c, u_input.c, false), 23u)])).c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-(~(~23245i)), global1.b << (_wgslsmith_add_u32(firstTrailingBit(5702u), u_input.c) % 32u)));
}

