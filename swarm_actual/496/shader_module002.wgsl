struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec3<u32> = vec3<u32>(0u, 8190u, 47430u);

var<private> global2: f32 = 533f;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool) -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1168f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_1.x)))), !(14185u > global1.x))))));
    let var_1 = Struct_2(i32(-1i) * -1i);
    global2 = _wgslsmith_f_op_f32(-arg_1.x);
    var var_2 = u_input.c.xz;
    var var_3 = min(_wgslsmith_clamp_u32(reverseBits(_wgslsmith_sub_u32(u_input.b.x & var_2.x, ~4294967295u)), 59345u, 26281u), var_2.x);
    return ~(_wgslsmith_div_u32(~31936u, var_2.x) & 0u);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~59424u, global1.x, global1.x, global1.x) << (~(u_input.b | vec4<u32>(21264u, 1u, 1u, global1.x)) % vec4<u32>(32u)), vec4<u32>(global1.x, func_3(Struct_1(vec4<i32>(18541i, -1i, 0i, -31238i), global0.x, ~vec4<i32>(1i, -10997i, 0i, 0i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1258f, 1000f, 1000f, arg_0.x)), !any(global0.zx)), global1.x, u_input.a));
    global2 = -1000f;
    global0 = !select(!vec4<bool>(any(vec4<bool>(global0.x, true, global0.x, global0.x)), true, true, all(global0.ww)), !select(vec4<bool>(true, false, global0.x, global0.x), select(vec4<bool>(global0.x, global0.x, true, true), vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, global0.x, false)), !vec4<bool>(global0.x, true, global0.x, global0.x)), true);
    let var_1 = Struct_1(vec4<i32>(0i, (i32(-1i) * -43417i) ^ firstTrailingBit(34405i), _wgslsmith_sub_i32(~(-15498i), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, 3498i), vec2<i32>(2147483647i, 1i)), vec2<i32>(0i, -2147483647i))), 1i), false, abs(vec4<i32>(_wgslsmith_sub_i32(firstTrailingBit(53891i), 2147483647i), ~max(29903i, 0i), abs(i32(-1i) * -2147483647i), 15834i)));
    let var_2 = vec4<bool>(all(select(vec4<bool>(false, !var_1.b, false, global0.x), select(select(vec4<bool>(true, true, false, var_1.b), vec4<bool>(false, var_1.b, false, false), false), vec4<bool>(var_1.b, global0.x, var_1.b, global0.x), vec4<bool>(false, var_1.b, true, global0.x)), true)), false, select(false, all(vec3<bool>(!global0.x, all(global0.ww), true)), global1.x <= (_wgslsmith_div_u32(u_input.a, 12636u) << (min(49173u, global1.x) % 32u))), !var_1.b);
    return abs(~min(1u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.c.x, global1.x), u_input.a)));
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = Struct_1(vec4<i32>(-1i, arg_0, -arg_0, -(~_wgslsmith_dot_vec2_i32(vec2<i32>(7454i, arg_0), vec2<i32>(arg_0, 0i)))), !global0.x, _wgslsmith_add_vec4_i32(select(vec4<i32>(~arg_0, arg_0, ~arg_0, 0i), countOneBits(~vec4<i32>(-2147483647i, arg_0, arg_0, arg_0)), vec4<bool>(global0.x, true, global1.x != u_input.c.x, global0.x)), ~(vec4<i32>(arg_0, -1i, -25064i, arg_0) ^ firstTrailingBit(vec4<i32>(-21876i, arg_0, arg_0, arg_0)))));
    let var_1 = countOneBits(vec4<u32>(65887u, abs(14738u) ^ func_2(vec4<f32>(1317f, 196f, 114f, 313f), vec3<f32>(-1359f, -287f, 972f)), reverseBits(~u_input.c.x), _wgslsmith_mult_u32(~global1.x, ~75350u))) ^ u_input.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1680f, -585f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1938f, -1943f) - vec2<f32>(-587f, -317f))))))));
    let var_3 = -reverseBits(~(-var_0.a.x));
    global0 = !select(vec4<bool>(false, all(select(vec3<bool>(var_0.b, global0.x, false), global0.yyx, var_0.b)), true, all(!vec2<bool>(var_0.b, var_0.b))), select(vec4<bool>(all(vec4<bool>(true, var_0.b, true, false)), var_0.b && global0.x, true, !var_0.b), !(!vec4<bool>(true, false, global0.x, false)), true), !vec4<bool>(any(global0.yx), global0.x, true, !var_0.b));
    return ~(~var_0.a.x & _wgslsmith_dot_vec4_i32(var_0.a, var_0.c)) ^ var_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_sub_i32(min(~0i, firstTrailingBit(-2147483647i)), ~1i));
    global2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1003f, 831f)) - _wgslsmith_f_op_f32(step(-2322f, -1118f))))), 318f));
    let var_1 = Struct_1(vec4<i32>(abs(func_1(1i)), 0i, var_0.a, func_1(reverseBits(var_0.a))) ^ vec4<i32>(-33648i, -16758i, var_0.a, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, var_0.a, var_0.a), vec3<i32>(var_0.a, var_0.a, -6454i)))), global0.x, vec4<i32>(var_0.a, 74675i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, var_0.a, -30378i, var_0.a), _wgslsmith_sub_vec4_i32(vec4<i32>(-23219i, 0i, var_0.a, var_0.a), vec4<i32>(-2507i, var_0.a, var_0.a, var_0.a))), -6505i ^ (var_0.a | -38678i)) | (vec4<i32>(func_1(2147483647i), 13743i >> (global1.x % 32u), func_1(-59949i), 13071i) << (vec4<u32>(firstTrailingBit(u_input.c.x), ~4294967295u, 1u, u_input.c.x) % vec4<u32>(32u))));
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(398f, -563f, -187f, 1454f), vec4<f32>(-1010f, 660f, 719f, -677f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, -989f, -1175f, 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(323f, -1067f, 1190f, -666f)), var_1.a.x == var_0.a)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-670f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1152f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-210f, 1000f)))), -1126f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-467f, -454f, 117f, 1675f) - vec4<f32>(-1754f, -1000f, 366f, 563f)))))));
    global2 = var_2.x;
    global0 = !select(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, global0.x, var_1.b, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x)), vec4<bool>(true, var_1.b, true, false), !(-9177i < var_1.a.x)), !select(!vec4<bool>(true, var_1.b, true, var_1.b), !vec4<bool>(var_1.b, global0.x, var_1.b, var_1.b), false), !select(vec4<bool>(global0.x, true, true, global0.x), select(vec4<bool>(false, true, true, true), vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(true, var_1.b, true, false)), vec4<bool>(false, true, var_1.b, global0.x)));
    var var_3 = _wgslsmith_clamp_u32(~(4294967295u & u_input.b.x), 1u, 41468u);
    var var_4 = 1i;
    var var_5 = var_1.c.yx;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_div_vec4_u32(vec4<u32>(~(~0u), _wgslsmith_mult_u32(0u, 4294967295u) >> (~global1.x % 32u), ~max(u_input.c.x, u_input.d), 4294967295u), select(vec4<u32>(_wgslsmith_mod_u32(61073u, u_input.a), global1.x, _wgslsmith_mult_u32(0u, 38490u), _wgslsmith_mod_u32(4294967295u, 48360u)), u_input.b, select(select(vec4<bool>(var_1.b, false, global0.x, global0.x), vec4<bool>(var_1.b, true, true, true), global0.x), vec4<bool>(false, var_1.b, global0.x, true), select(vec4<bool>(var_1.b, true, false, true), vec4<bool>(var_1.b, true, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, true))))), ~12849i, ~vec4<i32>(countOneBits(2147483647i), var_5.x, -abs(-2147483647i), -1i));
}

